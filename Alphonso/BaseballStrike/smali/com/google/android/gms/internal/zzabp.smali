.class final Lcom/google/android/gms/internal/zzabp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUA:Lcom/google/android/gms/internal/zzabt;

.field private synthetic zzUF:Lcom/google/android/gms/internal/zzabk;

.field private synthetic zzUG:Lcom/google/android/gms/internal/zzaad;

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabk;Landroid/content/Context;Lcom/google/android/gms/internal/zzabt;Lcom/google/android/gms/internal/zzaad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabp;->zzUF:Lcom/google/android/gms/internal/zzabk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabp;->zztH:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabp;->zzUA:Lcom/google/android/gms/internal/zzabt;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabp;->zzUG:Lcom/google/android/gms/internal/zzaad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->zzUF:Lcom/google/android/gms/internal/zzabk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabk;->zzUr:Lcom/google/android/gms/internal/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabp;->zztH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabp;->zzUA:Lcom/google/android/gms/internal/zzabt;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabp;->zzUG:Lcom/google/android/gms/internal/zzaad;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaad;->zzvV:Lcom/google/android/gms/internal/zzajd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzacj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabt;Lcom/google/android/gms/internal/zzajd;)V

    return-void
.end method
