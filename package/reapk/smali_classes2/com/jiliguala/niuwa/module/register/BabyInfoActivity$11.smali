.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 503
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 507
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 508
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/e;->isAdded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 509
    const/4 v3, 0x0

    .local v3, "year":I
    const/4 v1, 0x0

    .local v1, "month":I
    const/4 v0, 0x0

    .line 510
    .local v0, "day":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 511
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "strs":[Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 515
    :cond_0
    aget-object v4, v2, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 516
    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 518
    :cond_1
    aget-object v4, v2, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 519
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 523
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v0}, Lcom/jiliguala/niuwa/common/a/e;->a(III)Lcom/jiliguala/niuwa/common/a/e;

    .line 525
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1600(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/e;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/a/e;->b(Landroid/support/v4/app/ag;)V

    .line 527
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v3    # "year":I
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$11;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$700(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 529
    :cond_5
    return v7
.end method
