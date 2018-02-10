.class public Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;
.super Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.source "SourceFile"


# static fields
.field private static final LICENCE:Ljava/lang/String; = "Copyright (c) 2012-2013 by Paul S. Hawke, 2001,2005-2013 by Jarno Elonen, 2010 by Konstantinos Togias\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field private static final MIME_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SimpleWebServer"


# instance fields
.field private rootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$1;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$1;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->MIME_TYPES:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "wwwroot"    # Ljava/io/File;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->rootDir:Ljava/io/File;

    .line 89
    return-void
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    .local v0, "newUri":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/ "

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "tok":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getRootDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public serve(Ljava/lang/String;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 324
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 339
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 345
    const-string v6, "id"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 346
    .local v2, "id":Ljava/lang/String;
    iget-object v6, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->mCDS:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    invoke-virtual {v6, v2}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 348
    .local v3, "node":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "fname":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->getRootDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p0, p1, p3, v6}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    move-result-object v4

    .line 351
    .local v4, "resp":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    return-object v4

    .line 329
    .end local v1    # "fname":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "node":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .end local v4    # "resp":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 330
    .local v5, "value":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  HDR: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 336
    .restart local v5    # "value":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  PRM: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 341
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 342
    .restart local v5    # "value":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  UPLOADED: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .locals 38
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "homeDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v27, 0x0

    .line 131
    .local v27, "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v33

    if-nez v33, :cond_0

    .line 132
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    .line 133
    const-string v35, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    .line 132
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_0
    if-nez v27, :cond_3

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    sget-char v34, Ljava/io/File;->separatorChar:C

    const/16 v35, 0x2f

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 139
    const/16 v33, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    if-ltz v33, :cond_1

    .line 140
    const/16 v33, 0x0

    const/16 v34, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_1
    const-string v33, "src/main"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_2

    const-string v33, "src/main"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_2

    const-string v33, "../"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 144
    :cond_2
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    .line 145
    const-string v35, "FORBIDDEN: Won\'t serve ../ for security reasons."

    .line 144
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_3
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v12, "f":Ljava/io/File;
    if-nez v27, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_4

    .line 150
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    const-string v35, "Error 404, file not found."

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_4
    if-nez v27, :cond_1a

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 157
    const-string v33, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_5

    .line 159
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->REDIRECT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/html"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "<html><body>Redirected: <a href=\""

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 161
    const-string v36, "\">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "</a></body></html>"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 160
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    const-string v33, "Location"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_5
    if-nez v27, :cond_1a

    .line 168
    new-instance v33, Ljava/io/File;

    const-string v34, "index.html"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 169
    new-instance v12, Ljava/io/File;

    .end local v12    # "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/index.html"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v12    # "f":Ljava/io/File;
    move-object/from16 v28, v27

    .line 230
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .local v28, "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :goto_0
    if-nez v28, :cond_19

    .line 233
    const/16 v19, 0x0

    .line 234
    .local v19, "mime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2e

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 235
    .local v8, "dot":I
    if-ltz v8, :cond_6

    .line 236
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->MIME_TYPES:Ljava/util/Map;

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v34

    add-int/lit8 v35, v8, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    .line 237
    :cond_6
    if-nez v19, :cond_7

    .line 238
    const-string v19, "application/octet-stream"

    .line 241
    :cond_7
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->hashCode()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "etag":Ljava/lang/String;
    const-wide/16 v30, 0x0

    .line 245
    .local v30, "startFrom":J
    const-wide/16 v10, -0x1

    .line 246
    .local v10, "endAt":J
    const-string v33, "range"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 247
    .local v26, "range":Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 249
    const-string v33, "bytes="

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 251
    const-string v33, "bytes="

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 252
    const/16 v33, 0x2d

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    .line 255
    .local v22, "minus":I
    if-lez v22, :cond_8

    .line 257
    const/16 v33, 0x0

    :try_start_1
    move-object/from16 v0, v26

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 258
    add-int/lit8 v33, v22, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 267
    .end local v22    # "minus":I
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 268
    .local v14, "fileLen":J
    if-eqz v26, :cond_17

    const-wide/16 v34, 0x0

    cmp-long v33, v30, v34

    if-ltz v33, :cond_17

    .line 270
    cmp-long v33, v30, v14

    if-ltz v33, :cond_14

    .line 272
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    const-string v35, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :try_start_3
    const-string v33, "Content-Range"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "bytes 0-0/"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v33, "ETag"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 316
    .end local v8    # "dot":I
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v19    # "mime":Ljava/lang/String;
    .end local v26    # "range":Ljava/lang/String;
    .end local v30    # "startFrom":J
    :goto_2
    const-string v33, "Accept-Ranges"

    const-string v34, "bytes"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v27

    .line 170
    :cond_9
    new-instance v33, Ljava/io/File;

    const-string v34, "index.htm"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 171
    new-instance v12, Ljava/io/File;

    .end local v12    # "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "/index.htm"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v12    # "f":Ljava/io/File;
    move-object/from16 v28, v27

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 173
    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 175
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, "files":[Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "<html><body><h1>Directory "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "</h1><br/>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 178
    .local v23, "msg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    .line 180
    const/16 v33, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 181
    .local v32, "u":Ljava/lang/String;
    const/16 v33, 0x2f

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    .line 182
    .local v29, "slash":I
    if-ltz v29, :cond_b

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 183
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "<b><a href=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    add-int/lit8 v35, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">..</a></b><br/>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 186
    .end local v29    # "slash":I
    .end local v32    # "u":Ljava/lang/String;
    :cond_b
    if-eqz v13, :cond_c

    .line 188
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    array-length v0, v13

    move/from16 v33, v0

    move/from16 v0, v17

    move/from16 v1, v33

    if-lt v0, v1, :cond_d

    .line 219
    .end local v17    # "i":I
    :cond_c
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "</body></html>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 220
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Ljava/lang/String;)V

    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    move-object/from16 v28, v27

    .line 221
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 190
    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v17    # "i":I
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_d
    new-instance v4, Ljava/io/File;

    aget-object v33, v13, v17

    move-object/from16 v0, v33

    invoke-direct {v4, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v4, "curFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    .line 192
    .local v5, "dir":Z
    if-eqz v5, :cond_e

    .line 194
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "<b>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 195
    aget-object v33, v13, v17

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v13, v17

    .line 198
    :cond_e
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "<a href=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v35, v13, v17

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    aget-object v34, v13, v17

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "</a>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 203
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 204
    .local v20, "len":J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, " &nbsp;<font size=2>("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 205
    const-wide/16 v34, 0x400

    cmp-long v33, v20, v34

    if-gez v33, :cond_11

    .line 206
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 212
    :goto_4
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, ")</font>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 214
    .end local v20    # "len":J
    :cond_f
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "<br/>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 215
    if-eqz v5, :cond_10

    .line 216
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "</b>"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 188
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 207
    .restart local v20    # "len":J
    :cond_11
    const-wide/32 v34, 0x100000

    cmp-long v33, v20, v34

    if-gez v33, :cond_12

    .line 208
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v34, 0x400

    div-long v34, v20, v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/16 v34, 0x400

    rem-long v34, v20, v34

    const-wide/16 v36, 0xa

    div-long v34, v34, v36

    const-wide/16 v36, 0x64

    rem-long v34, v34, v36

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " KB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    .line 210
    :cond_12
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v34, 0x100000

    div-long v34, v20, v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/32 v34, 0x100000

    rem-long v34, v20, v34

    const-wide/16 v36, 0xa

    div-long v34, v34, v36

    const-wide/16 v36, 0x64

    rem-long v34, v34, v36

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " MB"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    .line 223
    .end local v4    # "curFile":Ljava/io/File;
    .end local v5    # "dir":Z
    .end local v13    # "files":[Ljava/lang/String;
    .end local v17    # "i":I
    .end local v20    # "len":J
    .end local v23    # "msg":Ljava/lang/String;
    :cond_13
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    const-string v35, "FORBIDDEN: No directory listing."

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    move-object/from16 v28, v27

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 277
    .restart local v8    # "dot":I
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v10    # "endAt":J
    .restart local v14    # "fileLen":J
    .restart local v19    # "mime":Ljava/lang/String;
    .restart local v26    # "range":Ljava/lang/String;
    .restart local v30    # "startFrom":J
    :cond_14
    const-wide/16 v34, 0x0

    cmp-long v33, v10, v34

    if-gez v33, :cond_15

    .line 278
    const-wide/16 v34, 0x1

    sub-long v10, v14, v34

    .line 279
    :cond_15
    sub-long v34, v10, v30

    const-wide/16 v36, 0x1

    add-long v24, v34, v36

    .line 280
    .local v24, "newLen":J
    const-wide/16 v34, 0x0

    cmp-long v33, v24, v34

    if-gez v33, :cond_16

    .line 281
    const-wide/16 v24, 0x0

    .line 283
    :cond_16
    move-wide/from16 v6, v24

    .line 284
    .local v6, "dataLen":J
    :try_start_4
    new-instance v16, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6, v7}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;-><init>(Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;Ljava/io/File;J)V

    .line 292
    .local v16, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, v16

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 294
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 295
    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :try_start_5
    const-string v33, "Content-Length"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v33, "Content-Range"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "bytes "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v33, "ETag"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 311
    .end local v6    # "dataLen":J
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "newLen":J
    :catch_0
    move-exception v18

    .line 313
    .end local v8    # "dot":I
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v26    # "range":Ljava/lang/String;
    .end local v30    # "startFrom":J
    .local v18, "ioe":Ljava/io/IOException;
    :goto_5
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, "text/plain"

    const-string v35, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 301
    .end local v18    # "ioe":Ljava/io/IOException;
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v8    # "dot":I
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v10    # "endAt":J
    .restart local v14    # "fileLen":J
    .restart local v26    # "range":Ljava/lang/String;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v30    # "startFrom":J
    :cond_17
    :try_start_6
    const-string v33, "if-none-match"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 302
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v34, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_2

    .line 305
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :cond_18
    new-instance v27, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;

    sget-object v33, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->OK:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v34, Ljava/io/FileInputStream;

    move-object/from16 v0, v34

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 306
    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :try_start_7
    const-string v33, "Content-Length"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v33, "ETag"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v9}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 311
    .end local v8    # "dot":I
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v26    # "range":Ljava/lang/String;
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .end local v30    # "startFrom":J
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    :catch_1
    move-exception v18

    move-object/from16 v27, v28

    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto :goto_5

    .line 260
    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v8    # "dot":I
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v10    # "endAt":J
    .restart local v22    # "minus":I
    .restart local v26    # "range":Ljava/lang/String;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v30    # "startFrom":J
    :catch_2
    move-exception v33

    goto/16 :goto_1

    .end local v8    # "dot":I
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "endAt":J
    .end local v19    # "mime":Ljava/lang/String;
    .end local v22    # "minus":I
    .end local v26    # "range":Ljava/lang/String;
    .end local v30    # "startFrom":J
    :cond_19
    move-object/from16 v27, v28

    .end local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_2

    :cond_1a
    move-object/from16 v28, v27

    .end local v27    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    .restart local v28    # "res":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
    goto/16 :goto_0
.end method
