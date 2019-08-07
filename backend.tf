terraform {
    backend "s3"{
        bucket = "terraform-project-mustafa"
        region =  "us-west-2"
        key = "infra.state"
    }
}