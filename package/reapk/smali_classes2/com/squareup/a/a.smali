.class public final Lcom/squareup/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static a(Landroid/app/Application;)Lcom/squareup/a/b;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 12
    sget-object v0, Lcom/squareup/a/b;->a:Lcom/squareup/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
