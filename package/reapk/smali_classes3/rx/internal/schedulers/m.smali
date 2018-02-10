.class public final Lrx/internal/schedulers/m;
.super Lrx/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/m$b;,
        Lrx/internal/schedulers/m$a;
    }
.end annotation


# static fields
.field public static final a:Lrx/internal/schedulers/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/schedulers/m;

    invoke-direct {v0}, Lrx/internal/schedulers/m;-><init>()V

    sput-object v0, Lrx/internal/schedulers/m;->a:Lrx/internal/schedulers/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 41
    return-void
.end method

.method static a(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 125
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lrx/internal/schedulers/m$a;

    invoke-direct {v0}, Lrx/internal/schedulers/m$a;-><init>()V

    return-object v0
.end method
