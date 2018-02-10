.class Lcom/jiliguala/niuwa/module/SuperViewActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/SuperViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field final synthetic b:Lcom/jiliguala/niuwa/module/SuperViewActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/SuperViewActivity;Lcom/jiliguala/niuwa/common/widget/customview/SuperView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/SuperViewActivity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;->b:Lcom/jiliguala/niuwa/module/SuperViewActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;->a:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;->b:Lcom/jiliguala/niuwa/module/SuperViewActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/SuperViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Super View \u4f7f\u7528\u793a\u8303"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;->a:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;->a:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 29
    return-void
.end method
