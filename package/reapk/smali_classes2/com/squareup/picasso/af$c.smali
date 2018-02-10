.class Lcom/squareup/picasso/af$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    new-instance v0, Lcom/squareup/picasso/r;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
