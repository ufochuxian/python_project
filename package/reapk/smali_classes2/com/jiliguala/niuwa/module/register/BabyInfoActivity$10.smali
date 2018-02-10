.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1300(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1500(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_1
    return-void

    .line 454
    :sswitch_0
    const-string v2, "boy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "girl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$10;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x17dcc -> :sswitch_0
        0x306a9c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
