.class public Lar/com/hjg/pngj/chunks/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x10

.field public static final f:I = 0x20

.field public static final g:I = 0x40

.field public static final h:I = 0x80

.field public static final i:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILar/com/hjg/pngj/s;)Lar/com/hjg/pngj/chunks/d;
    .locals 1
    .param p0, "copyFromMask"    # I
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 63
    new-instance v0, Lar/com/hjg/pngj/chunks/a$1;

    invoke-direct {v0, p1, p0}, Lar/com/hjg/pngj/chunks/a$1;-><init>(Lar/com/hjg/pngj/s;I)V

    return-object v0
.end method

.method static synthetic a(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lar/com/hjg/pngj/chunks/a;->b(II)Z

    move-result v0

    return v0
.end method

.method private static b(II)Z
    .locals 1
    .param p0, "v"    # I
    .param p1, "mask"    # I

    .prologue
    .line 51
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
