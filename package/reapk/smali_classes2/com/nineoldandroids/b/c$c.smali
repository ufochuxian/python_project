.class Lcom/nineoldandroids/b/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/b/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "propertyMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/b/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "nameValuesHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/b/c$b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput p1, p0, Lcom/nineoldandroids/b/c$c;->a:I

    .line 571
    iput-object p2, p0, Lcom/nineoldandroids/b/c$c;->b:Ljava/util/ArrayList;

    .line 572
    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 5
    .param p1, "propertyConstant"    # I

    .prologue
    .line 585
    iget v3, p0, Lcom/nineoldandroids/b/c$c;->a:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nineoldandroids/b/c$c;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lcom/nineoldandroids/b/c$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 588
    iget-object v3, p0, Lcom/nineoldandroids/b/c$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/b/c$b;

    .line 589
    .local v2, "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    iget v3, v2, Lcom/nineoldandroids/b/c$b;->a:I

    if-ne v3, p1, :cond_0

    .line 590
    iget-object v3, p0, Lcom/nineoldandroids/b/c$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    iget v3, p0, Lcom/nineoldandroids/b/c$c;->a:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/nineoldandroids/b/c$c;->a:I

    .line 592
    const/4 v3, 0x1

    .line 596
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    :goto_1
    return v3

    .line 587
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nameValuesHolder":Lcom/nineoldandroids/b/c$b;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
