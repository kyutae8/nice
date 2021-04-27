<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.1.1/chart.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">관리자 홈</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
						
						
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card  shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 1.5em; text-align: center;">Total Member   </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><p style="font-size: 1.5em; text-align: center;">${totalMember}</p></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card  shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1"  style="font-size: 1.5em; text-align: center;">Total Res</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><p style="font-size: 1.5em; text-align: center;">${totalRes }</p></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">시간대별 예약현황</h6>
                                </div>
                                        <canvas id="myChartTwo"  class="card-header py-3 d-flex flex-row align-items-center justify-content-between"></canvas>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">코스별 예약 현황</h6>
                                    
                                </div>
                                
                                <canvas id="myChartOne" class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                
                                </canvas>
                                
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

<script>
var myChartOne = document.getElementById("myChartOne").getContext("2d");

var douChart = new Chart(myChartOne, {
	type: 'doughnut',
	  data: {
		  labels: [ 'Orange', 'Green', 'Blue'],
		  datasets: [{
			  label: '#코스의 예약수',
			  data: ['${totalRescosO}','${totalRescosG}','${totalRescosB}'],
			  backgroundColor:[
				  '#FF5B2D',
				  '#26A939',
				  '#1344FF'
			  ],
			  
		  }]
	  },
});

var myChartTwo = document.getElementById("myChartTwo").getContext("2d");


var lineChart = new Chart(myChartTwo, {
	type: 'bar',
	options:{
		indexAxis:'y'
	},
	  data: {
		  labels: [ '08~10', '10~12', '12~14', '14~16','16~18'],
		  datasets: [{
			  label: ['시간대별'],
			  data: ['${totalResplay1}','${totalResplay2}','${totalResplay3}','${totalResplay4}','${totalResplay5}'],
			  backgroundColor:[
				  '#26D9DB'
			  ],
			  borderWidth:1,
			  hoverBorderColor:'#000'
		  }]
	  },
});

</script>                    
                    
                    
                    
                    
                    