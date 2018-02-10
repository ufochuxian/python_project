.class Lcom/jiliguala/niuwa/module/search/SearchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$1;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$1;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->onBackPressed()V

    .line 102
    return-void
.end method
