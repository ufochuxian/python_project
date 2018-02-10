.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;
.super Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;
.source "SourceFile"


# static fields
.field public static final INDEX_FILE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LICENCE:Ljava/lang/String; = "Copyright (c) 2012-2013 by Paul S. Hawke, 2001,2005-2013 by Jarno Elonen, 2010 by Konstantinos Togias\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

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

.field private static mimeTypeHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final quiet:Z

.field protected rootDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$1;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->INDEX_FILE_NAMES:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$2;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$2;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->MIME_TYPES:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->mimeTypeHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Z)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "wwwroot"    # Ljava/io/File;
    .param p4, "quiet"    # Z

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 277
    iput-boolean p4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->quiet:Z

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    .line 279
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->init()V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Z)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p4, "quiet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p3, "wwwroots":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 287
    iput-boolean p4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->quiet:Z

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    .line 290
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->init()V

    .line 291
    return-void
.end method

.method private canServeUri(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "homeDir"    # Ljava/io/File;

    .prologue
    .line 296
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 298
    .local v0, "canServeUri":Z
    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "mimeTypeForFile":Ljava/lang/String;
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->mimeTypeHandlers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;

    .line 302
    .local v3, "plugin":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;
    if-eqz v3, :cond_0

    .line 304
    invoke-interface {v3, p1, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;->canServeUri(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 307
    .end local v2    # "mimeTypeForFile":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;
    :cond_0
    return v0
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, ""

    .line 316
    .local v0, "newUri":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/ "

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    return-object v0

    .line 319
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "tok":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    goto :goto_0

    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 330
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

    .line 331
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private findIndexFileInDirectory(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 341
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->INDEX_FILE_NAMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 341
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    .local v1, "indexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 365
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 366
    .local v0, "dot":I
    const/4 v1, 0x0

    .line 367
    .local v1, "mime":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 369
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->MIME_TYPES:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mime":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 371
    .restart local v1    # "mime":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const-string v1, "application/octet-stream"

    .end local v1    # "mime":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 27
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 150
    const/16 v13, 0x1f90

    .line 152
    .local v13, "port":I
    const/4 v4, 0x0

    .line 153
    .local v4, "host":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v15, "rootDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v14, 0x0

    .line 155
    .local v14, "quiet":Z
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v12, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v5, v0, :cond_2

    .line 187
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 189
    new-instance v19, Ljava/io/File;

    const-string v20, "."

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    const-string v19, "host"

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v19, "port"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v19, "quiet"

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_d

    .line 209
    const-string v19, "home"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-class v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;

    invoke-static/range {v19 .. v19}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v17

    .line 212
    .local v17, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_f

    .line 235
    new-instance v19, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v13, v15, v14}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;-><init>(Ljava/lang/String;ILjava/util/List;Z)V

    invoke-static/range {v19 .. v19}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/ServerRunner;->executeInstance(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;)V

    .line 236
    return-void

    .line 160
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;>;"
    :cond_2
    aget-object v19, p0, v5

    const-string v20, "-h"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    aget-object v19, p0, v5

    const-string v20, "--host"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 162
    :cond_3
    add-int/lit8 v19, v5, 0x1

    aget-object v4, p0, v19

    .line 158
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 163
    :cond_5
    aget-object v19, p0, v5

    const-string v20, "-p"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    aget-object v19, p0, v5

    const-string v20, "--port"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 165
    :cond_6
    add-int/lit8 v19, v5, 0x1

    aget-object v19, p0, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 166
    goto :goto_2

    :cond_7
    aget-object v19, p0, v5

    const-string v20, "-q"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    aget-object v19, p0, v5

    const-string v20, "--quiet"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 168
    :cond_8
    const/4 v14, 0x1

    .line 169
    goto :goto_2

    :cond_9
    aget-object v19, p0, v5

    const-string v20, "-d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    aget-object v19, p0, v5

    const-string v20, "--dir"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 171
    :cond_a
    new-instance v19, Ljava/io/File;

    add-int/lit8 v20, v5, 0x1

    aget-object v20, p0, v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    :cond_b
    aget-object v19, p0, v5

    const-string v20, "--licence"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 174
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "++++httpserver Copyright (c) 2012-2013 by Paul S. Hawke, 2001,2005-2013 by Jarno Elonen, 2010 by Konstantinos Togias\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    :cond_c
    aget-object v19, p0, v5

    const-string v20, "-X:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 177
    aget-object v19, p0, v5

    const/16 v20, 0x3d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 178
    .local v3, "dot":I
    if-lez v3, :cond_4

    .line 180
    aget-object v19, p0, v5

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "name":Ljava/lang/String;
    aget-object v19, p0, v5

    add-int/lit8 v20, v3, 0x1

    aget-object v21, p0, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v12, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 196
    .end local v3    # "dot":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 198
    .local v2, "dir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_e

    .line 200
    const-string v20, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_e
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 205
    :catch_0
    move-exception v20

    goto/16 :goto_1

    .line 212
    .end local v2    # "dir":Ljava/io/File;
    .restart local v17    # "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;>;"
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;

    .line 214
    .local v8, "info":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;
    invoke-interface {v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;->getMimeTypes()[Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "mimeTypes":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v20

    .line 217
    .local v9, "mime":Ljava/lang/String;
    invoke-interface {v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;->getIndexFilesForMimeType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "indexFiles":[Ljava/lang/String;
    if-nez v14, :cond_11

    .line 220
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "++++httpserver # Found plugin for Mime type: \""

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    if-eqz v7, :cond_10

    .line 223
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, " (serving index files: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    array-length v0, v7

    move/from16 v23, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    .line 229
    :cond_10
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, ")."

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_11
    invoke-interface {v8, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPluginInfo;->getWebServerPlugin(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v9, v0, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->registerPluginForMimeType([Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;Ljava/util/Map;)V

    .line 215
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_3

    .line 224
    :cond_12
    aget-object v6, v7, v19

    .line 226
    .local v6, "indexFile":Ljava/lang/String;
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v19, v19, 0x1

    goto :goto_4
.end method

.method private newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 719
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->OK:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v6

    .line 720
    .local v6, "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-virtual {v6, v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-object v6
.end method

.method protected static registerPluginForMimeType([Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;Ljava/util/Map;)V
    .locals 6
    .param p0, "indexFiles"    # [Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "plugin"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p3, "commandLineOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-eqz p0, :cond_2

    .line 255
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_3

    .line 264
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->INDEX_FILE_NAMES:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_2
    sget-object v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->mimeTypeHandlers:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {p2, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;->initialize(Ljava/util/Map;)V

    goto :goto_0

    .line 255
    :cond_3
    aget-object v2, p0, v3

    .line 257
    .local v2, "filename":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 258
    .local v0, "dot":I
    if-ltz v0, :cond_4

    .line 260
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "extension":Ljava/lang/String;
    sget-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->MIME_TYPES:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v1    # "extension":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private respond(Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 17
    .param p2, "session"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 485
    const/16 v4, 0x3f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 487
    const/4 v4, 0x0

    const/16 v5, 0x3f

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 491
    :cond_0
    const-string v4, "../"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    const-string v4, "Won\'t serve ../ for security reasons."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getForbiddenResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    .line 556
    :goto_0
    return-object v13

    .line 496
    :cond_1
    const/4 v9, 0x0

    .line 497
    .local v9, "canServeUri":Z
    const/4 v10, 0x0

    .line 498
    .local v10, "homeDir":Ljava/io/File;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v11, v4, :cond_3

    .line 503
    :cond_2
    if-nez v9, :cond_4

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getNotFoundResponse()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    goto :goto_0

    .line 500
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "homeDir":Ljava/io/File;
    check-cast v10, Ljava/io/File;

    .line 501
    .restart local v10    # "homeDir":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->canServeUri(Ljava/lang/String;Ljava/io/File;)Z

    move-result v9

    .line 498
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 510
    :cond_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v7, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 514
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->REDIRECT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/html"

    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v16, "<html><body>Redirected: <a href=\""

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "\">"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "</a></body></html>"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    .line 516
    .local v13, "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "Location"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    .end local v13    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 524
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->findIndexFileInDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 525
    .local v12, "indexFile":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 527
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 530
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->OK:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/html"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    goto/16 :goto_0

    .line 533
    :cond_6
    const-string v4, "No directory listing."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getForbiddenResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    goto/16 :goto_0

    .line 537
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->respond(Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    goto/16 :goto_0

    .line 541
    .end local v12    # "indexFile":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "mimeTypeForFile":Ljava/lang/String;
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->mimeTypeHandlers:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;

    .line 543
    .local v3, "plugin":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;
    const/4 v14, 0x0

    .line 544
    .local v14, "response":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    if-eqz v3, :cond_9

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v10}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;->canServeUri(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 546
    invoke-interface/range {v3 .. v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/WebServerPlugin;->serveFile(Ljava/lang/String;Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v14

    .line 547
    if-eqz v14, :cond_a

    instance-of v4, v14, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;

    if-eqz v4, :cond_a

    move-object v15, v14

    .line 549
    check-cast v15, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;

    .line 550
    .local v15, "rewrite":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;
    invoke-virtual {v15}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v15}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;->getUri()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->respond(Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v13

    goto/16 :goto_0

    .line 554
    .end local v15    # "rewrite":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/InternalRewrite;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v14

    .line 556
    :cond_a
    if-eqz v14, :cond_b

    .end local v14    # "response":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :goto_2
    move-object v13, v14

    goto/16 :goto_0

    .restart local v14    # "response":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getNotFoundResponse()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_2
.end method


# virtual methods
.method protected getForbiddenResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->FORBIDDEN:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FORBIDDEN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalErrorResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INTERNAL ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected getNotFoundResponse()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 3

    .prologue
    .line 376
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Error 404, file not found."

    invoke-virtual {p0, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method protected listDirectory(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 24
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 388
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Directory "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "heading":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "<html><head><title>"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</title><style><!--\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 390
    const-string v18, "span.dirname { font-weight: bold; }\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "span.filesize { font-size: 75%; }\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "// -->\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</style>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 391
    const-string v18, "</head><body><h1>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</h1>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 389
    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .local v11, "msg":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 394
    .local v16, "up":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 396
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "u":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 398
    .local v14, "slash":I
    if-ltz v14, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 400
    const/16 v17, 0x0

    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 404
    .end local v14    # "slash":I
    .end local v15    # "u":Ljava/lang/String;
    :cond_0
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$3;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 413
    .local v9, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer$4;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 423
    .local v6, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 424
    if-nez v16, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    add-int v17, v17, v18

    if-lez v17, :cond_6

    .line 426
    :cond_1
    const-string v17, "<ul>"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    if-nez v16, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 429
    :cond_2
    const-string v17, "<section class=\"directories\">"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    if-eqz v16, :cond_3

    .line 432
    const-string v17, "<li><a rel=\"directory\" href=\""

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 433
    const-string v18, "\"><span class=\"dirname\">..</span></a></b></li>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_7

    .line 441
    const-string v17, "</section>"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 445
    const-string v17, "<section class=\"files\">"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_8

    .line 465
    const-string v17, "</section>"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_5
    const-string v17, "</ul>"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_6
    const-string v17, "</body></html>"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 435
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 437
    .local v7, "directory":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "dir":Ljava/lang/String;
    const-string v18, "<li><a rel=\"directory\" href=\""

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 439
    const-string v19, "\"><span class=\"dirname\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</span></a></b></li>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 446
    .end local v5    # "dir":Ljava/lang/String;
    .end local v7    # "directory":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 448
    .local v8, "file":Ljava/lang/String;
    const-string v18, "<li><a href=\""

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\"><span class=\"filename\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 449
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</span></a>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v4, "curFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 452
    .local v12, "len":J
    const-string v18, "&nbsp;<span class=\"filesize\">("

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-wide/16 v18, 0x400

    cmp-long v18, v12, v18

    if-gez v18, :cond_9

    .line 455
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :goto_2
    const-string v18, ")</span></li>"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 456
    :cond_9
    const-wide/32 v18, 0x100000

    cmp-long v18, v12, v18

    if-gez v18, :cond_a

    .line 458
    const-wide/16 v18, 0x400

    div-long v18, v12, v18

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide/16 v20, 0x400

    rem-long v20, v12, v20

    const-wide/16 v22, 0xa

    div-long v20, v20, v22

    const-wide/16 v22, 0x64

    rem-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " KB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 461
    :cond_a
    const-wide/32 v18, 0x100000

    div-long v18, v12, v18

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide/32 v20, 0x100000

    rem-long v20, v12, v20

    const-wide/16 v22, 0x2710

    div-long v20, v20, v22

    const-wide/16 v22, 0x64

    rem-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 3
    .param p1, "status"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v0

    .line 477
    .local v0, "response":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method public serve(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 9
    .param p1, "session"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;

    .prologue
    .line 562
    invoke-interface {p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 563
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v3

    .line 564
    .local v3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, "uri":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->quiet:Z

    if-nez v6, :cond_0

    .line 568
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "++++httpserver "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;->getMethod()Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 570
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 571
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 576
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 584
    .end local v0    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->rootDirs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 592
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v6, p1, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->respond(Ljava/util/Map;Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v6

    :goto_2
    return-object v6

    .line 573
    .restart local v0    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 574
    .local v5, "value":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "++++httpserver   HDR: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 579
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 580
    .restart local v5    # "value":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "++++httpserver   PRM: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    goto :goto_1

    .line 584
    .end local v0    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 587
    .local v2, "homeDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 589
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "given path is not a directory ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getInternalErrorResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v6

    goto/16 :goto_2
.end method

.method serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .locals 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "mime"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 607
    .local v12, "etag":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 608
    .local v24, "startFrom":J
    const-wide/16 v10, -0x1

    .line 609
    .local v10, "endAt":J
    const-string v4, "range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 610
    .local v21, "range":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 612
    const-string v4, "bytes="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    const-string v4, "bytes="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 615
    const/16 v4, 0x2d

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 618
    .local v20, "minus":I
    if-lez v20, :cond_0

    .line 620
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 621
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    .line 631
    .end local v20    # "minus":I
    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "if-range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 632
    .local v18, "ifRange":Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v16, 0x0

    .line 634
    .local v16, "headerIfRangeMissingOrMatching":Z
    :goto_1
    const-string v4, "if-none-match"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 635
    .local v17, "ifNoneMatch":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 636
    const-string v4, "*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 635
    :cond_1
    const/4 v13, 0x1

    .line 640
    .local v13, "headerIfNoneMatchPresentAndMatching":Z
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 642
    .local v14, "fileLen":J
    if-eqz v16, :cond_7

    if-eqz v21, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-ltz v4, :cond_7

    cmp-long v4, v24, v14

    if-gez v4, :cond_7

    .line 646
    if-eqz v13, :cond_4

    .line 652
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 653
    .local v22, "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .end local v10    # "endAt":J
    .end local v12    # "etag":Ljava/lang/String;
    .end local v13    # "headerIfNoneMatchPresentAndMatching":Z
    .end local v14    # "fileLen":J
    .end local v16    # "headerIfRangeMissingOrMatching":Z
    .end local v17    # "ifNoneMatch":Ljava/lang/String;
    .end local v18    # "ifRange":Ljava/lang/String;
    .end local v21    # "range":Ljava/lang/String;
    .end local v24    # "startFrom":J
    :goto_3
    return-object v22

    .line 632
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .restart local v10    # "endAt":J
    .restart local v12    # "etag":Ljava/lang/String;
    .restart local v18    # "ifRange":Ljava/lang/String;
    .restart local v21    # "range":Ljava/lang/String;
    .restart local v24    # "startFrom":J
    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    .line 635
    .restart local v16    # "headerIfRangeMissingOrMatching":Z
    .restart local v17    # "ifNoneMatch":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 656
    .restart local v13    # "headerIfNoneMatchPresentAndMatching":Z
    .restart local v14    # "fileLen":J
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gez v4, :cond_5

    .line 658
    const-wide/16 v4, 0x1

    sub-long v10, v14, v4

    .line 660
    :cond_5
    sub-long v4, v10, v24

    const-wide/16 v26, 0x1

    add-long v8, v4, v26

    .line 661
    .local v8, "newLen":J
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gez v4, :cond_6

    .line 663
    const-wide/16 v8, 0x0

    .line 666
    :cond_6
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 667
    .local v7, "fis":Ljava/io/FileInputStream;
    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 669
    sget-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 670
    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "Accept-Ranges"

    const-string v5, "bytes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v4, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 708
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "newLen":J
    .end local v10    # "endAt":J
    .end local v12    # "etag":Ljava/lang/String;
    .end local v13    # "headerIfNoneMatchPresentAndMatching":Z
    .end local v14    # "fileLen":J
    .end local v16    # "headerIfRangeMissingOrMatching":Z
    .end local v17    # "ifNoneMatch":Ljava/lang/String;
    .end local v18    # "ifRange":Ljava/lang/String;
    .end local v21    # "range":Ljava/lang/String;
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .end local v24    # "startFrom":J
    :catch_0
    move-exception v19

    .line 710
    .local v19, "ioe":Ljava/io/IOException;
    const-string v4, "Reading file failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->getForbiddenResponse(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    goto/16 :goto_3

    .line 678
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .restart local v10    # "endAt":J
    .restart local v12    # "etag":Ljava/lang/String;
    .restart local v13    # "headerIfNoneMatchPresentAndMatching":Z
    .restart local v14    # "fileLen":J
    .restart local v16    # "headerIfRangeMissingOrMatching":Z
    .restart local v17    # "ifNoneMatch":Ljava/lang/String;
    .restart local v18    # "ifRange":Ljava/lang/String;
    .restart local v21    # "range":Ljava/lang/String;
    .restart local v24    # "startFrom":J
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v21, :cond_8

    cmp-long v4, v24, v14

    if-ltz v4, :cond_8

    .line 682
    :try_start_3
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/plain"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 683
    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes */"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 685
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :cond_8
    if-nez v21, :cond_9

    if-eqz v13, :cond_9

    .line 690
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 691
    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 692
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :cond_9
    if-nez v16, :cond_a

    if-eqz v13, :cond_a

    .line 698
    sget-object v4, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedLengthResponse(Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 699
    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 703
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/SimpleWebServer;->newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;

    move-result-object v22

    .line 704
    .restart local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    const-string v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 623
    .end local v13    # "headerIfNoneMatchPresentAndMatching":Z
    .end local v14    # "fileLen":J
    .end local v16    # "headerIfRangeMissingOrMatching":Z
    .end local v17    # "ifNoneMatch":Ljava/lang/String;
    .end local v18    # "ifRange":Ljava/lang/String;
    .end local v22    # "res":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Response;
    .restart local v20    # "minus":I
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method
