.class public abstract Lorg/chromium/base/Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onResultFromNative(I)V
    .locals 1
    .param p1, "result"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private onResultFromNative(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-virtual {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method private onResultFromNative(Z)V
    .locals 1
    .param p1, "result"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
