#-----------------------------------------------------------------------------------------------------------------------
# ロール用変数
#-----------------------------------------------------------------------------------------------------------------------
variable "role" {
  default = "codecommit-pages"
}

#-----------------------------------------------------------------------------------------------------------------------
# S3バケット用ローカル変数
#-----------------------------------------------------------------------------------------------------------------------
locals {
  s3_bucket_name = "codecommit-pages-bucket"
}

#-----------------------------------------------------------------------------------------------------------------------
# CodeCommit用ローカル変数
#-----------------------------------------------------------------------------------------------------------------------
locals {
  codecommit_repository  = "codecommit_pages"
  codecommit_branch_name = "master"
}

#-----------------------------------------------------------------------------------------------------------------------
# CodeBuild用ローカル変数
#-----------------------------------------------------------------------------------------------------------------------
locals {
  codebuild_proj_name       = "codecommit-pages-build-proj"
  codebuild_iam_role_name   = "codecommit-pages-codebuild-role"
  codebuild_iam_policy_name = "codecommit-pages-codebuild-policy"
  codebuild_log_group_name  = "/aws/codebuild/codecommit-pages"
  codebuild_log_stream_name = "codecommit_pages"
  codebuild_retention_days  = 7
}

#-----------------------------------------------------------------------------------------------------------------------
# CodeBuild、ドキュメント作成シェル用ローカル変数
#-----------------------------------------------------------------------------------------------------------------------
locals {
  # AWS CLI用glibcバージョンの指定は以下リリースページのリリース番号を指定する。
  # https://github.com/sgerrand/alpine-pkg-glibc/releases
  aws_cli_install_glibc_version = "2.35-r1"
  # ドキュメント生成元ファイルをルートディレクトリ以外に格納する場合に指定する。
  codecommit_pages_src_dir  = ""
  codecommit_pages_protocol = "http"
}

#-----------------------------------------------------------------------------------------------------------------------
# EventBridge
#-----------------------------------------------------------------------------------------------------------------------
locals {
  eventbridge_iam_rule_name   = "codecommit-pages-eb-rule"
  eventbridge_iam_role_name   = "codecommit-pages-eb-role"
  eventbridge_iam_policy_name = "codecommit-pages-eb-policy"
}
