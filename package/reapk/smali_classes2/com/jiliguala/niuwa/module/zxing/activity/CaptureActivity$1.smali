.class Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;
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
    .line 144
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;->a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;->a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity$1;->a:Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->access$000(Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    return-void
.end method
