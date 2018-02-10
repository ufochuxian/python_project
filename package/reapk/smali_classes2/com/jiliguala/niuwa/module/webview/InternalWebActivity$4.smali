.class Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$4;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$4;->a:Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$100(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V

    .line 361
    return-void
.end method
