.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->setResult(I)V

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;->finish()V

    .line 79
    return-void
.end method
