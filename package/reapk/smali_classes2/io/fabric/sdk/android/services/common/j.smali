.class public abstract Lio/fabric/sdk/android/services/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/j$a;,
        Lio/fabric/sdk/android/services/common/j$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "<unknown>"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "<unknown>"

    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/common/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/j;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/j;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->c:Ljava/lang/String;

    return-object v0
.end method
