.class public final Lcom/c/a/a/a/e/b;
.super Lcom/c/a/a/a/e/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/c/a/a/a/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/c/a/b$d;->quick_view_load_more:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/c/a/b$c;->load_more_loading_view:I

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/c/a/b$c;->load_more_load_fail_view:I

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/c/a/b$c;->load_more_load_end_view:I

    return v0
.end method
