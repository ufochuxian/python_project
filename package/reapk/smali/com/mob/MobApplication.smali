.class public Lcom/mob/MobApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-virtual {p0}, Lcom/mob/MobApplication;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/MobApplication;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mob/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
