.class final Lrx/internal/operators/ch$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/internal/operators/ch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ch",
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
    .line 38
    new-instance v0, Lrx/internal/operators/ch;

    invoke-direct {v0}, Lrx/internal/operators/ch;-><init>()V

    sput-object v0, Lrx/internal/operators/ch$a;->a:Lrx/internal/operators/ch;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
