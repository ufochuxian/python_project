.class Lcom/mob/tools/a/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/a/n$a;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/tools/a/n;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/n;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/a/n;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/mob/tools/a/n$4;->b:Lcom/mob/tools/a/n;

    iput-object p2, p0, Lcom/mob/tools/a/n$4;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/a/g;)V
    .locals 9
    .param p1, "conn"    # Lcom/mob/tools/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    .line 562
    invoke-interface {p1}, Lcom/mob/tools/a/g;->a()I

    move-result v4

    .line 563
    .local v4, "status":I
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_0

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_3

    .line 564
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/a/g;->b()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 566
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 567
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "txt":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_2

    .line 569
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 570
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 575
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 576
    iget-object v6, p0, Lcom/mob/tools/a/n$4;->a:Ljava/util/HashMap;

    const-string v7, "resp"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    return-void

    .line 578
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "txt":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lcom/mob/tools/a/g;->c()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 580
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 581
    .restart local v0    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 582
    .restart local v5    # "txt":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_5

    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 584
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 589
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 591
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v1, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "error"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v6, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v6, Ljava/lang/Throwable;

    new-instance v7, Lcom/mob/tools/c/g;

    invoke-direct {v7}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v7, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v6
.end method
