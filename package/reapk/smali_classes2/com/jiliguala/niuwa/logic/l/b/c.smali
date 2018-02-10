.class public Lcom/jiliguala/niuwa/logic/l/b/c;
.super Lcom/jiliguala/niuwa/logic/l/b/b;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/l/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/b/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;)Lcom/jiliguala/niuwa/logic/l/b/b;
    .locals 0
    .param p1, "listener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 35
    return-object p0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 22
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a()V

    .line 24
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/l/b/c;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u94fe\u63a5\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u5df2\u5b89\u88c5\u6d4f\u89c8\u5668"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
