<div class="content-wrapper">
    <section class="content">
        <div class="box box-info">
            <div class="box-header">
                <h4 style="text-align:center">
                    <b style="line-height:25px">
                        TAMBAH DATA KEMATIAN <br>
                    </b>
                </h4>
                <hr>
            </div>

            <div class="box-body">
                <?php
                if ($this->session->flashdata('sukses')) {
                    ?>
                <div class="callout callout-success">
                    <p style="font-size:14px">
                        <i class="fa fa-check"></i> <?php echo $this->session->flashdata('sukses'); ?>
                    </p>
                </div>
                <?php
                }
                ?>
            <form action="<?php echo base_url('kematian/proses_tambah'); ?>" method="post">

                <div class="form-group">
                                        <label>NIK</label>
                                        <input type="text" name="nik" class="form-control" required />
                                    </div>

                                    <div class="form-group">
                                        <label>No Kartu Keluarga</label>
                                        <input type="text" name="no_kk" class="form-control" required />
                                    </div>
                    <!-- kolom ke-1 -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama" class="form-control" required />
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <select name="jenis_kelamin" class="form-control" required>
                                    <option value="" selected disabled>- pilih -</option>
                                    <option value="Laki Laki">Laki Laki</option>
                                    <option value="Perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tempat Tanggal Lahir</label>
                                <div class="row">
                                    <div class="col-xs-5">
                                        <input type="text" name="tempat_lahir" class="form-control"
                                            placeholder="Tempat">
                                    </div>
                                    <div class="col-xs-5">
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" name="tanggal_lahir" class="form-control pull-right"
                                                placeholder="Tanggal Lahir atau Usia">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Agama</label>
                                <select class="form-control selectlive" name="agama" required>
                                    <option value="" selected disabled>- pilih -</option>
                                    <option value="Islam">Islam</option>
                                    <option value="Kristen">Kristen</option>
                                    <option value="Katholik">Katholik</option>
                                    <option value="Hindu">Hindu</option>
                                    <option value="Budha">Budha</option>
                                    <option value="Konghucu">Konghucu</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Pekerjaan</label>
                                <input type="text" name="pekerjaan" class="form-control" required />
                            </div>
                            <div class="form-group">
                                <label>Alamat Duka</label>
                                <textarea name="alamat" class="form-control" rows="3" required></textarea>
                            </div>

                            <div class="form-group">
                                <label>RT</label>
                                <input type="text" name="rt" class="form-control" required />
                            </div>

                            <div class="form-group">
                                        <label>RW</label>
                                        <input type="text" name="rw" class="form-control" required />
                            </div>

                            <div class="form-group">
                                <label>Tanggal Wafat</label>
                                <div class="row">
                                    <div class="col-xs-4">
                                        <select name="hari_wafat" class="form-control" required>
                                            <option value="" selected disabled>- pilih hari -</option>
                                            <option value="Senin">Senin</option>
                                            <option value="Selasa">Selasa</option>
                                            <option value="Rabu">Rabu</option>
                                            <option value="Kamis">Kamis</option>
                                            <option value="jumat">jumat</option>
                                            <option value="Sabtu">Sabtu</option>
                                            <option value="Minggu">Minggu</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-5">
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="date" name="tanggal_wafat" class="form-control pull-right"
                                                placeholder="tanggal wafat">
                                        </div>
                                    </div>

                                    <div class="col-xs-2">
                                        <div class="input-group time">
                                            <div class="input-group-addon">

                                                <label for=""> Pukul</label>
                                            </div>
                                            <input type="time" name="pukul" class="form-control" required />
                                        </div>
                                    </div>



                                </div>
                            </div>
                            <div class="form-group">
                                <button onClick="window.history.go(-1);" class="btn btn-success">Simpan</button>
                                <a href="<?php echo base_url('kematian/tampil'); ?>" class="btn btn-danger">Batal</a>
                            </div>
                </form>

            </div>
    </section>
</div>