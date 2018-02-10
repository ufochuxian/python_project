.class public Lcom/wrapp/floatlabelededittext/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/wrapp/floatlabelededittext/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/wrapp/floatlabelededittext/c;->b()I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_0
.end method

.method private static b()I
    .locals 3

    .prologue
    .line 20
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lcom/wrapp/floatlabelededittext/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 22
    add-int/lit8 v0, v1, 0x1

    .line 23
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    sget-object v2, Lcom/wrapp/floatlabelededittext/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    return v1
.end method
