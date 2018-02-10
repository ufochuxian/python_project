.class final enum Lrx/c/m$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c/m$c;",
        ">;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lrx/c/m$c;

.field private static final synthetic a:[Lrx/c/m$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 573
    new-instance v0, Lrx/c/m$c;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/c/m$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c/m$c;->INSTANCE:Lrx/c/m$c;

    .line 572
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/c/m$c;

    sget-object v1, Lrx/c/m$c;->INSTANCE:Lrx/c/m$c;

    aput-object v1, v0, v2

    sput-object v0, Lrx/c/m$c;->a:[Lrx/c/m$c;

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
    .line 572
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c/m$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 572
    const-class v0, Lrx/c/m$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c/m$c;

    return-object v0
.end method

.method public static values()[Lrx/c/m$c;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lrx/c/m$c;->a:[Lrx/c/m$c;

    invoke-virtual {v0}, [Lrx/c/m$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/m$c;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 572
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/c/m$c;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 576
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
