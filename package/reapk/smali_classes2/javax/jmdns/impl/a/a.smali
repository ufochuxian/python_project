.class public abstract Ljavax/jmdns/impl/a/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 32
    iput-object p1, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .param p2, "in"    # Ljavax/jmdns/impl/b;
    .param p3, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v5, p1

    .line 113
    .local v5, "newOut":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v5

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->e()I

    move-result v1

    .line 116
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->f()Z

    move-result v4

    .line 117
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->x()I

    move-result v3

    .line 118
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->d()I

    move-result v2

    .line 120
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/e;->b(I)V

    .line 121
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 122
    iget-object v6, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 124
    new-instance v5, Ljavax/jmdns/impl/e;

    .end local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 125
    .restart local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/f;)Ljavax/jmdns/impl/e;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .param p2, "rec"    # Ljavax/jmdns/impl/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v5, p1

    .line 81
    .local v5, "newOut":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v5

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->e()I

    move-result v1

    .line 84
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->f()Z

    move-result v4

    .line 85
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->x()I

    move-result v3

    .line 86
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->d()I

    move-result v2

    .line 88
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/e;->b(I)V

    .line 89
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 90
    iget-object v6, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 92
    new-instance v5, Ljavax/jmdns/impl/e;

    .end local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 93
    .restart local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/f;)V

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .param p2, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v5, p1

    .line 174
    .local v5, "newOut":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object v5

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->e()I

    move-result v1

    .line 177
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->f()Z

    move-result v4

    .line 178
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->x()I

    move-result v3

    .line 179
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->d()I

    move-result v2

    .line 181
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/e;->b(I)V

    .line 182
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 183
    iget-object v6, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 185
    new-instance v5, Ljavax/jmdns/impl/e;

    .end local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 186
    .restart local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/g;)V

    goto :goto_0
.end method

.method public a(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/g;J)Ljavax/jmdns/impl/e;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .param p2, "rec"    # Ljavax/jmdns/impl/g;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v5, p1

    .line 144
    .local v5, "newOut":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v5

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->e()I

    move-result v1

    .line 147
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->f()Z

    move-result v4

    .line 148
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->x()I

    move-result v3

    .line 149
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->d()I

    move-result v2

    .line 151
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/e;->b(I)V

    .line 152
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 153
    iget-object v6, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 155
    new-instance v5, Ljavax/jmdns/impl/e;

    .end local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 156
    .restart local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/e;->a(Ljavax/jmdns/impl/g;J)V

    goto :goto_0
.end method

.method public abstract a(Ljava/util/Timer;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(Ljavax/jmdns/impl/e;Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)Ljavax/jmdns/impl/e;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/e;
    .param p2, "in"    # Ljavax/jmdns/impl/b;
    .param p3, "rec"    # Ljavax/jmdns/impl/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v5, p1

    .line 206
    .local v5, "newOut":Ljavax/jmdns/impl/e;
    :try_start_0
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/e;->b(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-object v5

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->e()I

    move-result v1

    .line 209
    .local v1, "flags":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->f()Z

    move-result v4

    .line 210
    .local v4, "multicast":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->x()I

    move-result v3

    .line 211
    .local v3, "maxUDPPayload":I
    invoke-virtual {v5}, Ljavax/jmdns/impl/e;->d()I

    move-result v2

    .line 213
    .local v2, "id":I
    or-int/lit16 v6, v1, 0x200

    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/e;->b(I)V

    .line 214
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/e;->a(I)V

    .line 215
    iget-object v6, p0, Ljavax/jmdns/impl/a/a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->a(Ljavax/jmdns/impl/e;)V

    .line 217
    new-instance v5, Ljavax/jmdns/impl/e;

    .end local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/e;-><init>(IZI)V

    .line 218
    .restart local v5    # "newOut":Ljavax/jmdns/impl/e;
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/e;->b(Ljavax/jmdns/impl/b;Ljavax/jmdns/impl/g;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Ljavax/jmdns/impl/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
