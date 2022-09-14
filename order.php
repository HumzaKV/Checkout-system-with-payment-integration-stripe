<div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Orders</h6>
                                </div>
                                <div class="card-body">
                                    <?php while ($list = mysqli_fetch_array($ords)) 
                                    { ?>
                                    <div class="ord-det">
                                       <h4 class="small font-weight-bold date">Added On <?php echo $list['added_on']; ?>
                                          <span class="float-right text-primary">id: <span class="ord-id"><?php echo $list['ord_id']; ?></span></span></h4>
                                    <div class="mb-4">

                                    <select class="status">

                                        <?php if ($list['order_status'] == 0) {
                                            $msg = '<option class="text-danger" vlaue="0">Pending</option>
                                                    <option class="text-primary" value="1">Completed</option>';
                                        }
                                        else{
                                            $msg = '<option class="text-primary" value="1">Completed</option>
                                <option class="text-danger" vlaue="0">Pending</option>';
                                        } echo $msg; ?></div>
                                    </select>
                                            
                                        </div>
                                    </div>
                                    <?php } ?>
                                    
                                </div>
                            </div>