.class Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$2;->a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$2;->a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->access$100(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)V

    .line 160
    return-void
.end method
