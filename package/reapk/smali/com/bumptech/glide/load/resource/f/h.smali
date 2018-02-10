.class public Lcom/bumptech/glide/load/resource/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/f/f",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/f/h",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/resource/f/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/f/h;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/f/h;->a:Lcom/bumptech/glide/load/resource/f/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/bumptech/glide/load/resource/f/h;, "Lcom/bumptech/glide/load/resource/f/h<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/resource/f/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TZ;>;"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/bumptech/glide/load/resource/f/h;->a:Lcom/bumptech/glide/load/resource/f/h;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/resource/f/h;, "Lcom/bumptech/glide/load/resource/f/h<TZ;>;"
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TZ;>;"
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/load/resource/f/h;, "Lcom/bumptech/glide/load/resource/f/h<TZ;>;"
    const-string v0, ""

    return-object v0
.end method
