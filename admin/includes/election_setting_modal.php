<!-- Config -->

<div class="modal fade" id="esconfig">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Configure Election</b></h4>
            </div>
            <div class="modal-body">
              <div class="text-center">
      
                <form class="form-horizontal" method="POST" action="configelection_save.php">
                <?php
                  $qry = "SELECT * FROM election_settings";
                  $result_t = $conn->query($qry);
      
                  # fetch query data
                  while ($row= $result_t->fetch_assoc()){
                    $esid = $row['es_id'];
                    $title = $row['election_title'];
                    $startdate = $row['startdate'];
                    $enddate = $row['enddate'];
                  ?>
                <input type="hidden" class="id" name="id" value="<?php echo $esid?>">
                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label justify">Title:</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="title" name="title" value="<?php echo $title?>">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label justify">Election Start Date:</label>

                    <div class="col-sm-9">
                      <input type="datetime-local" class="form-control" id="startdate" name="startdate" value="<?php echo $startdate?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label justify">Election End Date:</label>

                    <div class="col-sm-9">
                      <input type="datetime-local" class="form-control" id="enddate" name="enddate" value="<?php echo $enddate?>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label justfy"> Election Status:</label>

                    <div class="col-sm-9">
                      <input type="radio" id="yes" name="isopen" value="GettingReady">
                      <label for="html">Getting Ready</label><br>
                      <input type="radio" id="yes" name="isopen" value="Open">
                      <label for="html">Open Voting</label><br>
                      <input type="radio" id="no" name="isopen" value="Close">
                      <label for="css">Close Voting</label><br>
                      <input type="radio" id="closed" name="isopen" value="Publish">
                      <label for="css">Publish Results</label><br>
                    </div>
                  </div>
                  <?php
    }
?>
              </div>
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="savesetting"><i class="fa fa-save"></i> Save</button>
              </form>
            </div>
        </div>
    </div>
</div>
