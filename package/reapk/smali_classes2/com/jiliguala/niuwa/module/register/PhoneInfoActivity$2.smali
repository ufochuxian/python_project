.class Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;
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
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    const-class v2, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_url"

    const-string v2, "https://jiliguala.com/terms.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
