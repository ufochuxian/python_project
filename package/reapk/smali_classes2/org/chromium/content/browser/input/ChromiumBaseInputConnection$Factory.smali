.class public interface abstract Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
.end method

.method public abstract onViewAttachedToWindow()V
.end method

.method public abstract onViewDetachedFromWindow()V
.end method

.method public abstract onViewFocusChanged(Z)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method
