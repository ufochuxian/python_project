.class public Lorg/xwalk/core/internal/XWalkViewDatabaseBridge;
.super Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;
.source "SourceFile"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;-><init>()V

    return-void
.end method

.method public static clearFormData()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;->clearFormData()V

    .line 22
    return-void
.end method

.method public static hasFormData()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;->hasFormData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewDatabaseBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewDatabaseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewDatabaseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 28
    :cond_0
    return-void
.end method
