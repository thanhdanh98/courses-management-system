import { Component, OnInit, Injector } from '@angular/core';
import { HocSinhService } from 'src/app/services/hoc-sinh.service';
import { CropperSettings } from 'ng2-img-cropper';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css'],
  providers: [HocSinhService]
})
export class ProfileComponent implements OnInit {

  infoForm: FormGroup;
  passwordForm: FormGroup;
  data: any;
  defautAvatar = 'assets/noavatar.png';
  cropperSettings: CropperSettings;

  constructor(fb: FormBuilder) {
    this.cropperSettings = new CropperSettings();
    this.cropperSettings.width = 100;
    this.cropperSettings.height = 100;
    this.cropperSettings.croppedWidth = 100;
    this.cropperSettings.croppedHeight = 100;
    this.cropperSettings.canvasWidth = 300;
    this.cropperSettings.canvasHeight = 200;
    // this.cropperSettings.noFileInput = true;

    this.infoForm = fb.group({
      'name': [null, Validators.compose([Validators.required, Validators.minLength(5), Validators.maxLength(50)])],
      'id': [null, Validators.compose([Validators.required, Validators.minLength(7), Validators.maxLength(8)])],
      'gender': [null, Validators.required],
      'birthday': [null, Validators.required],
      'phone': [null, Validators.compose([Validators.required, Validators.pattern('[0-9]*'),
      Validators.minLength(10), Validators.maxLength(10)])],
      'address': [null, Validators.compose([Validators.required])],
      'email': [null, Validators.compose([Validators.required, Validators.email])]
    });
    this.passwordForm = fb.group({
      'oldPassword': [null, Validators.compose([Validators.required])],
      'newPassword': [null, Validators.compose([Validators.required, Validators.minLength(8)])],
      'confirmPassword': [null, Validators.compose([Validators.required])],
    });

    console.log(this.infoForm);
    this.infoForm.valueChanges.subscribe((form: any) => {
      console.log('form changed to:', form);
    });


    this.data = {};
  }

  ngOnInit() {
  }

  submitForm(value: any) {
    console.log(value);
  }

  changeInfoOnClick() {

  }

  changePasswordOnClick() {

  }
}
