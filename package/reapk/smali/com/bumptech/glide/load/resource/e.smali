.class public Lcom/bumptech/glide/load/resource/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/bumptech/glide/load/resource/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e;->a:Lcom/bumptech/glide/load/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/bumptech/glide/load/resource/e;, "Lcom/bumptech/glide/load/resource/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/resource/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/bumptech/glide/load/resource/e;->a:Lcom/bumptech/glide/load/f;

    check-cast v0, Lcom/bumptech/glide/load/resource/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;
    .locals 0
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/load/resource/e;, "Lcom/bumptech/glide/load/resource/e<TT;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/bumptech/glide/load/resource/e;, "Lcom/bumptech/glide/load/resource/e<TT;>;"
    const-string v0, ""

    return-object v0
.end method
