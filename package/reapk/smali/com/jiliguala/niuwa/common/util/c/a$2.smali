.class final Lcom/jiliguala/niuwa/common/util/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/c/a$2;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/c/a$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "shareObj"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    .line 36
    .local v0, "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/c/a$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/c/a$2;->b:Landroid/app/Activity;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->target:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .end local v0    # "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    :cond_0
    return-void
.end method
