.class Lu/aly/dh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lu/aly/dh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lu/aly/dh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Lu/aly/dh$1;)V

    sput-object v0, Lu/aly/dh$b;->a:Lu/aly/dh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/dh;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/dh$b;->a:Lu/aly/dh;

    return-object v0
.end method
