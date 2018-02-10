.class final enum Lrx/internal/util/o$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/o$b;",
        ">;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lrx/internal/util/o$b;

.field private static final synthetic a:[Lrx/internal/util/o$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lrx/internal/util/o$b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/util/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/o$b;->INSTANCE:Lrx/internal/util/o$b;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/o$b;

    sget-object v1, Lrx/internal/util/o$b;->INSTANCE:Lrx/internal/util/o$b;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/o$b;->a:[Lrx/internal/util/o$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/o$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lrx/internal/util/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/o$b;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/o$b;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lrx/internal/util/o$b;->a:[Lrx/internal/util/o$b;

    invoke-virtual {v0}, [Lrx/internal/util/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/o$b;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lrx/internal/util/o$b;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
