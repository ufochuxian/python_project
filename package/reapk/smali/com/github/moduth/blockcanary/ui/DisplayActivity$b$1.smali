.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/github/moduth/blockcanary/ui/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/github/moduth/blockcanary/ui/DisplayActivity$b;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity$b;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$b$1;->a:Lcom/github/moduth/blockcanary/ui/DisplayActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/moduth/blockcanary/ui/c;Lcom/github/moduth/blockcanary/ui/c;)I
    .locals 4
    .param p1, "lhs"    # Lcom/github/moduth/blockcanary/ui/c;
    .param p2, "rhs"    # Lcom/github/moduth/blockcanary/ui/c;

    .prologue
    .line 437
    iget-object v0, p2, Lcom/github/moduth/blockcanary/ui/c;->V:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/github/moduth/blockcanary/ui/c;->V:Ljava/io/File;

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 434
    check-cast p1, Lcom/github/moduth/blockcanary/ui/c;

    check-cast p2, Lcom/github/moduth/blockcanary/ui/c;

    invoke-virtual {p0, p1, p2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$b$1;->a(Lcom/github/moduth/blockcanary/ui/c;Lcom/github/moduth/blockcanary/ui/c;)I

    move-result v0

    return v0
.end method
