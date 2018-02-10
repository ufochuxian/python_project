.class Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/login/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->finish()V

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;->a:Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->finish()V

    .line 90
    return-void
.end method
