.class final Lcom/google/android/gms/internal/zzanu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzani;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzani",
        "<",
        "Lcom/google/android/gms/internal/zzanv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzafJ:Lcom/google/android/gms/internal/zzami;

.field private final zzahX:Lcom/google/android/gms/internal/zzanv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzami;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanu;->zzafJ:Lcom/google/android/gms/internal/zzami;

    new-instance v0, Lcom/google/android/gms/internal/zzanv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    iput p2, v0, Lcom/google/android/gms/internal/zzanv;->zzahZ:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzafJ:Lcom/google/android/gms/internal/zzami;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzami;->zzkr()Lcom/google/android/gms/internal/zzaob;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaob;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zze(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/zzanv;->zzaia:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzafJ:Lcom/google/android/gms/internal/zzami;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzami;->zzkr()Lcom/google/android/gms/internal/zzaob;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaob;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzlm()Lcom/google/android/gms/internal/zzang;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    return-object v0
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanv;->zzaeH:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanv;->zzaeI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzahX:Lcom/google/android/gms/internal/zzanv;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzanv;->zzahY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->zzafJ:Lcom/google/android/gms/internal/zzami;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzami;->zzkr()Lcom/google/android/gms/internal/zzaob;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzaob;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
