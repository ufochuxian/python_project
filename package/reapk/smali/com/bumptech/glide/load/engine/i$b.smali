.class final enum Lcom/bumptech/glide/load/engine/i$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/engine/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE:Lcom/bumptech/glide/load/engine/i$b;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/i$b;

.field private static final synthetic a:[Lcom/bumptech/glide/load/engine/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/bumptech/glide/load/engine/i$b;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/i$b;->CACHE:Lcom/bumptech/glide/load/engine/i$b;

    .line 134
    new-instance v0, Lcom/bumptech/glide/load/engine/i$b;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/i$b;->SOURCE:Lcom/bumptech/glide/load/engine/i$b;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/i$b;

    sget-object v1, Lcom/bumptech/glide/load/engine/i$b;->CACHE:Lcom/bumptech/glide/load/engine/i$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/i$b;->SOURCE:Lcom/bumptech/glide/load/engine/i$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/engine/i$b;->a:[Lcom/bumptech/glide/load/engine/i$b;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/i$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/bumptech/glide/load/engine/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/i$b;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/i$b;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/bumptech/glide/load/engine/i$b;->a:[Lcom/bumptech/glide/load/engine/i$b;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/i$b;

    return-object v0
.end method
