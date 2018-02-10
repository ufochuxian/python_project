.class final enum Lrx/internal/util/o$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/o$a;",
        ">;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lrx/internal/util/o$a;

.field private static final synthetic a:[Lrx/internal/util/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lrx/internal/util/o$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/util/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/o$a;->INSTANCE:Lrx/internal/util/o$a;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/o$a;

    sget-object v1, Lrx/internal/util/o$a;->INSTANCE:Lrx/internal/util/o$a;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/o$a;->a:[Lrx/internal/util/o$a;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/o$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lrx/internal/util/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/o$a;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/o$a;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lrx/internal/util/o$a;->a:[Lrx/internal/util/o$a;

    invoke-virtual {v0}, [Lrx/internal/util/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/o$a;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lrx/internal/util/o$a;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
