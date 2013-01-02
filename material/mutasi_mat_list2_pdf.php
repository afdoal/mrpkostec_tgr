<?php
require_once('../models/tcpdf/config/lang/eng.php');
require_once('../models/tcpdf/tcpdf.php');
require_once "../models/abspath.php";
require_once "pdocon.php";
require_once "function.php";


$NmMenu=$_REQUEST["NmMenu"];
$title=$NmMenu." List Report";

// extend TCPF with custom functions
class MYPDF extends TCPDF {
	// create custom Header and Footer
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

$pdf->setPrintHeader(false);

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
$pdf->AddPage('L');

//Data loading
$mat_type = $_REQUEST["mat_type"];	
$date1 = dmys2ymd($_REQUEST["date1"]);
$date2 = dmys2ymd($_REQUEST["date2"]);

$q = "SELECT KdBarang,NmBarang,matgroup_name,twhmp,Sat,
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_stockcard s WHERE date < '".$date1."' AND s.mat_id = a.KdBarang AND type = 'B')
	  +
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_incdet ia LEFT JOIN mat_inchdr ib ON ib.matin_id=ia.matin_id WHERE matin_type <> '3' AND matin_date < '".$date1."' AND ia.mat_id = a.KdBarang)
	  -
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_outdet oa LEFT JOIN mat_outhdr ob ON ob.matout_id=oa.matout_id WHERE matout_type <> '3' AND matout_date < '".$date1."' AND oa.mat_id = a.KdBarang)
	  +
	  (SELECT IF(SUM(qty_in)>0,SUM(qty_in),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE opname_date < '".$date1."' AND oa.mat_id = a.KdBarang)
	  -
	  (SELECT IF(SUM(qty_out)>0,SUM(qty_out),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE opname_date < '".$date1."' AND oa.mat_id = a.KdBarang)
	  ) AS qty_beg, 
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_incdet ia LEFT JOIN mat_inchdr ib ON ib.matin_id=ia.matin_id WHERE matin_type = '0' AND ia.mat_id = a.KdBarang AND matin_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_in0,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_incdet ia LEFT JOIN mat_inchdr ib ON ib.matin_id=ia.matin_id WHERE matin_type = '1' AND ia.mat_id = a.KdBarang AND matin_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_in1,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_incdet ia LEFT JOIN mat_inchdr ib ON ib.matin_id=ia.matin_id WHERE matin_type = '2' AND ia.mat_id = a.KdBarang AND matin_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_in2,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_outdet oa LEFT JOIN mat_outhdr ob ON ob.matout_id=oa.matout_id WHERE matout_type = '0' AND oa.mat_id = a.KdBarang AND matout_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_out0,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_outdet oa LEFT JOIN mat_outhdr ob ON ob.matout_id=oa.matout_id WHERE matout_type = '1' AND oa.mat_id = a.KdBarang AND matout_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_out1,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_outdet oa LEFT JOIN mat_outhdr ob ON ob.matout_id=oa.matout_id WHERE matout_type = '2' AND oa.mat_id = a.KdBarang AND matout_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_out2,
	  
	  (
	  (SELECT IF(SUM(qty_in)>0,SUM(qty_in),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  +
	  (SELECT IF(SUM(qty_out)>0,SUM(qty_out),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_bal,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty, 0 AS qty_end, FORMAT(0,2) AS qty_diff
	   ";
$q .= "FROM mst_barang a 
	   LEFT JOIN mat_group b ON b.matgroup_code=a.MatGroup
	  WHERE a.TpBarang='$mat_type' 
	  ORDER BY KdBarang ASC";

$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);

// create some HTML content
$html = '<h2>'.$NmMenu.'</h2>'.	
		'<b>Period : '.$_REQUEST['date1'] .' - '.$_REQUEST['date2'].'</b><br>'.				
		'<table cellspacing="0" cellpadding="2" border="1">
		<thead>
		<tr>
		  <th align="center" rowspan="2" width="25"><b>No.</b></th>
		  <th width="50" rowspan="2"><b>Mat. Code</b></th>
		  <th width="100" rowspan="2"><b>Mat. Group</b></th>
		  <th width="100" rowspan="2"><b>Size</b></th>
		  <th align="center" rowspan="2" width="30"><b>Unit</b></th>
		  <th align="right" rowspan="2"><b>Beginning Balance</b></th>
		  <th align="center" colspan="3"><b>Incoming</b></th>
		  <th align="center" colspan="3"><b>Outgoing</b></th>
		  <th align="right" rowspan="2"><b>Ending Balance</b></th>
		  <th rowspan="2" width="100"><b>Remarks</b></th>
		</tr>
		<tr>
		  <th align="right"><b>Purchase</b></th>
		  <th align="right"><b>Replacement</b></th>
		  <th align="right"><b>From Production</b></th>
		  <th align="right"><b>Consumption</b></th>
		  <th align="right"><b>Return</b></th>
		  <th align="right"><b>From Production</b></th>
		</tr>
		</thead>
		<tbody>';
$no=1;
foreach ($rs as $r){
$qty_end=$r['qty_beg']+$r['qty_in']-$r['qty_out'];

$html .= '<tr>'.
	  	 '<td align="center" width="25">'.$no.'</td>'.
		 '<td width="50">'.$r['KdBarang'].'</td>'.
		 '<td width="100">'.$r['matgroup_name'].'</td>'.
		 '<td width="100">'.$r['twhmp'].'</td>'.
		 '<td align="center" width="30">'.$r['Sat'].'</td>'.
		 '<td align="right">'.$r['qty_beg'].'</td>'.
		 '<td align="right">'.$r['qty_in0'].'</td>'.
		 '<td align="right">'.$r['qty_in1'].'</td>'.
		 '<td align="right">'.$r['qty_in2'].'</td>'.
		 '<td align="right">'.$r['qty_out0'].'</td>'.
		 '<td align="right">'.$r['qty_out1'].'</td>'.
		 '<td align="right">'.$r['qty_out2'].'</td>'.
		 '<td align="right">'.number_format($qty_end,2).'</td>'.
		 '<td width="100">'.$r['ket'].'</td>'.
		 '</tr>';
$no+=1;	
}

$html .= '</tbody></table>';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');
// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output($NmMenu.'.pdf', 'I');