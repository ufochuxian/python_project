.class public Lcom/jiliguala/niuwa/services/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/services/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/jiliguala/niuwa/common/util/e/f$a;

.field public h:Ljava/io/File;

.field final synthetic i:Lcom/jiliguala/niuwa/services/f;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/services/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/f;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/f$a;->i:Lcom/jiliguala/niuwa/services/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/jiliguala/niuwa/services/f$a;->e:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/jiliguala/niuwa/services/f$a;->f:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/services/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/e/f$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/f;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fullPath"    # Ljava/lang/String;
    .param p5, "args"    # Lcom/jiliguala/niuwa/common/util/e/f$a;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/f$a;->i:Lcom/jiliguala/niuwa/services/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/jiliguala/niuwa/services/f$a;->e:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/jiliguala/niuwa/services/f$a;->f:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/jiliguala/niuwa/services/f$a;->g:Lcom/jiliguala/niuwa/common/util/e/f$a;

    .line 150
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10
    .param p1, "status"    # I

    .prologue
    .line 167
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 169
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/f$a;->h:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 173
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/jiliguala/niuwa/services/f$a;->h:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/success.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/f$a;->e:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 177
    iget-object v8, p0, Lcom/jiliguala/niuwa/services/f$a;->h:Ljava/io/File;

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .line 178
    .local v7, "listFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 179
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 180
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 194
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v6    # "i":I
    .end local v7    # "listFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    :goto_1
    return-void

    .line 185
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v8

    .line 188
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 185
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/e/f$a;F)V
    .locals 3
    .param p1, "args"    # Lcom/jiliguala/niuwa/common/util/e/f$a;
    .param p2, "percentage"    # F

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 154
    mul-float v1, p2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 156
    .local v0, "progress":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/f$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/services/f$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/jiliguala/niuwa/common/util/e/f$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 162
    return-void
.end method
