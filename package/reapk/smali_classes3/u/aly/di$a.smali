.class Lu/aly/di$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lu/aly/di;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lu/aly/di;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/di;-><init>(Lu/aly/di$1;)V

    sput-object v0, Lu/aly/di$a;->a:Lu/aly/di;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/di;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lu/aly/di$a;->a:Lu/aly/di;

    return-object v0
.end method