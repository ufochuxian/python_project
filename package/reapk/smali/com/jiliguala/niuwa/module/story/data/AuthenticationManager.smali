.class public Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException;,
        Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getUserCredentials()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
    .locals 1
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public runWhenAuthenticated(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    return-void
.end method
