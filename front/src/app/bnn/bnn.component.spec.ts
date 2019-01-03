import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BnnComponent } from './bnn.component';

describe('BnnComponent', () => {
  let component: BnnComponent;
  let fixture: ComponentFixture<BnnComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BnnComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BnnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
