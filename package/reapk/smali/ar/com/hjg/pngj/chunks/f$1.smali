.class final Lar/com/hjg/pngj/chunks/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/f;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 2
    .param p1, "c"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 54
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/PngChunk;->a:Ljava/lang/String;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
