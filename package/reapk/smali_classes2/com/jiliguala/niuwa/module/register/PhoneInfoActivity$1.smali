.class Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/ad;->b(Landroid/widget/EditText;)V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    const v1, 0x7f010013

    const v2, 0x7f010020

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    .line 94
    return-void
.end method
