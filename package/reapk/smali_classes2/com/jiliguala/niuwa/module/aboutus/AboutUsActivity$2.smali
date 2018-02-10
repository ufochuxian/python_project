.class Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$2;->a:Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
