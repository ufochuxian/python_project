.class final Lu/aly/dj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lu/aly/dj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lu/aly/dj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Lu/aly/dj$1;)V

    sput-object v0, Lu/aly/dj$a;->a:Lu/aly/dj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/dj;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lu/aly/dj$a;->a:Lu/aly/dj;

    return-object v0
.end method
