<?php
require_once('../models/tcpdf/config/lang/eng.php');
require_once('../models/tcpdf/tcpdf.php');
require_once "../models/abspath.php";
require_once "sessions.php";
require_once "pdocon.php";
require_once "function.php";
//session_start();


$NmMenu=$_REQUEST["NmMenu"];
$title=$NmMenu." List Report";

// extend TCPF with custom functions
class MYPDF extends TCPDF {
	// create custom Header and Footer
	//Page header
	public function Header() {
		// Logo
		$image_file = K_PATH_IMAGES.'logo.png';
		$this->Image($image_file, 15, 5, 180, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
		// Set font
		$this->SetFont('helvetica', 'B', 20);
		// Title
		//$this->Cell(0, 15, '<< TCPDF Example 003 >>', 0, false, 'C', 0, '', 0, false, 'M', 'M');
	}
	
	// Page footer
	public function Footer() {
		// Position at 15 mm from bottom
		$this->SetY(-15);
		// Set font
		$this->SetFont('helvetica', 'I', 8);
		// Page number
		$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	}

	// Load table data from file
	public function LoadData($file) {
		// Read file lines
		$lines = file($file);
		$data = array();
		foreach($lines as $line) {
			$data[] = explode(';', chop($line));
		}
		return $data;
	}

	// Colored table
	public function ColoredTable($header,$data) {
		// Colors, line width and bold font
		$this->SetFillColor(255);
		$this->SetTextColor(0);
		$this->SetDrawColor(0);
		$this->SetLineWidth(0.3);
		$this->SetFont('', 'B');
		// Header
		$w = array(40, 35, 40, 45);
		$num_headers = count($header);
		for($i = 0; $i < $num_headers; ++$i) {
			$this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
		}
		$this->Ln();
		// Color and font restoration
		$this->SetFillColor(255);
		$this->SetTextColor(0);
		$this->SetFont('');
		// Data
		$fill = 0;
		foreach($data as $row) {
			$this->Cell($w[0], 6, $row[0], 'LR', 0, 'L', $fill);
			$this->Cell($w[1], 6, $row[1], 'LR', 0, 'L', $fill);
			$this->Cell($w[2], 6, number_format($row[2]), 'LR', 0, 'R', $fill);
			$this->Cell($w[3], 6, number_format($row[3]), 'LR', 0, 'R', $fill);
			$this->Ln();
			$fill=!$fill;
		}
		$this->Cell(array_sum($w), 0, '', 'T');
	}
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Kikin Kusumah (022-7353 7575)');
$pdf->SetTitle($title);
$pdf->SetSubject($subject);
$pdf->SetKeywords($keywords);

$pdf->setPrintHeader(true);

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 011', PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

//set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

//set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

//set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

//set some language-dependent strings
$pdf->setLanguageArray($l);

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', '', 8);

// add a page
$pdf->AddPage();

//Data loading
$po_id = $_REQUEST["po_id"];

$q = "SELECT *,DATE_FORMAT(po_date,'%d/%m/%Y') AS po_date,DATE_FORMAT(dlv_date,'%d/%m/%Y') AS dlv_date
	  FROM pur_pohdr a
	  LEFT JOIN mat_warehouse b ON b.wh_id=a.wh_id
	  WHERE po_type='0' ";
$q .= "AND po_id LIKE '$po_id' ";	  
$q .= "ORDER BY po_no, po_date ASC";
$runh=$pdo->query($q);	
$rsh=$runh->fetchAll(PDO::FETCH_ASSOC);


$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,matgroup_name,twhmp,c.HsNo AS HsNo2,Sat AS Sat2,qty,FORMAT(qty, 2) AS qty2,price,FORMAT(price, 2) AS price2,(qty*price) AS amount,FORMAT(qty*price, 2) AS amount2, remark_det
	  FROM pur_podet a 
	  LEFT JOIN mst_barang b ON KdBarang = mat_id 
	  LEFT JOIN mat_group c ON c.matgroup_code=b.MatGroup
	  WHERE po_id='$po_id' 
	  ORDER BY child_no ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);

// create some HTML content
$html = '<h2 align="center"><u>'.strtoupper($NmMenu).'</u></h2>'.		
		'<table>
		<tr>
		  <td width="40"><b>Seller</b></td>
		  <td colspan="2" width="360"><b>: '.$rsh[0]['supplier'].'</b></td>		  
		  <td width="60"><b>Date</b></td>
		  <td width="10"><b>:</b></td>
		  <td width="80"><b>'.$rsh[0]['po_date'].'</b></td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>		  
		  <td><b>Attn.</b></td>
		  <td colspan="2" width="360"><b>: '.$rsh[0]['attn'].'</b></td>
		  <td width="60"><b>PO No.</b></td>
		  <td width="10"><b>:</b></td>
		  <td width="80"><b>'.$rsh[0]['po_no'].'</b></td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>
		  <td><b>Cc</b></td>
		  <td colspan="2" width="360"><b>: </b></td>
		  <td width="60"><b></b></td>
		  <td width="10"><b></b></td>
		  <td width="80"><b></b></td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>
		  <td colspan="6">We take pleasure placing order to terms and condition mentioned bellow :</td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>
		  <td colspan="2" width="75">Delivery time</td>
		  <td colspan="4">: <b>A.S.A.P</b></td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>
		  <td colspan="2">Destination</td>
		  <td colspan="4">: '.$_SESSION["c_address"].'</td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		<tr>
		  <td colspan="2">Payment Terms</td>
		  <td colspan="4">: '.$rsh[0]['terms'].'</td>
		</tr>
		<tr>
		  <td colspan="6">&nbsp;</td>
		</tr>
		</table>'.
		'<table cellspacing="0" cellpadding="2" border="1">
		<thead>
		<tr>
		  <th align="center" width="25"><b>No</b></th>
		  <th align="center" width="150"><b>Material Group</b></th>
		  <th align="center" width="100"><b>Size</b></th>
		  <th align="center"><b>Weight</b></th>
		  <th align="center"><b>Price/Kg</b></th>
		  <th align="center"><b>Amount</b></th>
		  <th align="center"><b>Remark</b></th>
		</tr>
		</thead>
		<tbody>';
$no=1;
$tot_qty=0;
$tot_price=0;
$tot_amount=0;
foreach ($rs as $r){
$html .= '<tr>'.
	  	 '<td align="center" width="25">'.$no.'</td>'.
		 '<td width="150">'.$r['matgroup_name'].'</td>'.
		 '<td width="100">'.$r['twhmp'].'</td>'.
		 '<td align="right">'.$r['qty2'].' '.$r['Sat2'].'</td>'.
		 '<td align="right">'.$r['price2'].'</td>'.
		 '<td align="right">'.$r['amount2'].'</td>'.
		 '<td>'.$r['remark_det'].'</td>'.
		 '</tr>';
$no+=1;	
$tot_qty += $r['qty'];
$tot_price += $r['price'];
$tot_amount += $r['amount'];
}
$html .= '<tr>'.
	  	 '<td align="center" colspan="3"><b><i>TOTAL</i></b></td>'.
		 '<td align="right"><b>'.number_format($tot_qty,2).' '.$rs[0]['Sat2'].'</b></td>'.
		 '<td align="right"><b>'.number_format($tot_price,2).'</b></td>'.
		 '<td align="right"><b>'.number_format($tot_amount,2).'</b></td>'.
		 '<td></td>'.
		 '</tr>';



$html .= '</tbody></table>&nbsp;<br>';

$html .= '<table>
		<tr>
		  <td width="200">Remarks</td>
		  <td width="70" rowspan="4"></td>
		  <td width="370" rowspan="4">
		    &nbsp;
		    <br>
		    <table border="1">
			  <tr>
			    <td align="center">Prepared</td>
				<td align="center">Checked</td>
				<td align="center">Checked</td>
				<td align="center">Approved</td>
			  </tr>
			  <tr>
			    <td align="center">&nbsp;<br>&nbsp;<br>&nbsp;<br></td>
				<td align="center"></td>
				<td align="center"></td>
				<td align="center"></td>
			  </tr>
			  <tr>
			    <td align="center">Dian Retno</td>
				<td align="center">Agus Widodo</td>
				<td align="center">Park Sang Sun</td>
				<td align="center">Jhong Young Kyu</td>
			  </tr>
			</table>
			&nbsp;
		    <br>
			&nbsp;
		    <br>
			<table><tr><td></td><td>
			<table border="1" width="185" >
			  <tr>
			    <td align="center">New</td>
				<td align="center">Repeat</td>
				<td align="center">Order</td>
			  </tr>
			  <tr>
			    <td align="center">&nbsp;<br>&nbsp;<br>&nbsp;<br></td>
				<td align="center"></td>
				<td align="center"></td>
			  </tr>
			</table>
			</td></tr></table>
		  </td>
		</tr>
		<tr>
		  <td width="200">Thank\'s for your attention and cooperation.<br>Please re fax after your sign and stamp.<br>&nbsp;<br>&nbsp;<br>&nbsp;</td>
		</tr>
		<tr>
		  <td align="center" width="200">'.$rsh[0]['supplier'].'</td>
		</tr>
		<tr>
		  <td align="center" width="200"><br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>
		  (..................................................)</td>
		</tr>
		</table>';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');
// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output($NmMenu.'.pdf', 'I');