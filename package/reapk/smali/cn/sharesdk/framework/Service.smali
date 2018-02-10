.class public abstract Lcn/sharesdk/framework/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/Service$ServiceEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getServiceVersionInt()I
.end method

.method public abstract getServiceVersionName()Ljava/lang/String;
.end method

.method public onBind()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onUnbind()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
