<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Election Configuration
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Election Configuration</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <?php
        if(isset($_SESSION['error'])){
          echo "
            <div class='alert alert-danger alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-warning'></i> Error!</h4>
              ".$_SESSION['error']."
            </div>
          ";
          unset($_SESSION['error']);
        }
        if(isset($_SESSION['success'])){
          echo "
            <div class='alert alert-success alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-check'></i> Success!</h4>
              ".$_SESSION['success']."
            </div>
          ";
          unset($_SESSION['success']);
        }
      ?>
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
 
            <div class="box-body">
              <table id="example1" class="table table-bordered">
                <thead>
                  <th class="hidden"></th>
                  <th>Title</th>
                  <th>Start Date</th>
                  <th>End Date</th>
                  <th>Election Status</th>
                  <th>Action</th>
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT * FROM election_settings";
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
                     
                        <tr>
                          <td class='hidden'></td>
                          <td><?php echo $row['election_title']; ?></td>
                          <td><?php echo $row['startdate']; ?></td>
                          <td><?php echo $row['enddate']; ?></td>
                          <td> <?php
                               if($row['election_status']=='GettingReady') {
                                echo '<span class="label bg-yellow-active"> Getting Ready  </span>';
                                 }
                            if($row['election_status']=='Open') {
                            echo '<span class="label bg-green-active"> Open - Voting in progress  </span>';
                             }
                             elseif ($row['election_status']=='Close'){
                              echo '<span  class="label bg-red-active"> Voting is Closed  </span>';
                               }

                               elseif ($row['election_status']=='Publish'){
                                echo '<span  class="label bg-blue-active"> Results Published  </span>';
                                 }
                            ?>
                               </td>
                          <td>
                            <button class='btn btn-success btn-sm edit btn-flat' data-id='<?php echo $row['es_id']; ?>'><i class='fa fa-edit'></i> Manage</button>
                          </td>
                        </tr>
                        <?php };?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>   
  </div>
    
  <?php include 'includes/footer.php'; ?>
  <?php include 'includes/election_setting_modal.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
  $(document).on('click', '.edit', function(e){
    e.preventDefault();
    $('#esconfig').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

});


</script>
</body>
</html>
