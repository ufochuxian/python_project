.class final Lrx/internal/operators/ci$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lrx/internal/operators/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ci",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lrx/internal/operators/ci;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/ci;-><init>(ZI)V

    sput-object v0, Lrx/internal/operators/ci$b;->a:Lrx/internal/operators/ci;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
