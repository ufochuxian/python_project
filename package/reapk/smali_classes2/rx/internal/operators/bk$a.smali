.class final Lrx/internal/operators/bk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/internal/operators/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/bk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lrx/internal/operators/bk;

    invoke-direct {v0}, Lrx/internal/operators/bk;-><init>()V

    sput-object v0, Lrx/internal/operators/bk$a;->a:Lrx/internal/operators/bk;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
